function submitSong() {
  var input = document.getElementById('new-song');
  var newSongName = input.value;
  createSong(newSongName);

  input.value = null;
}

function createSong(name) {

  var newSong = { name: name };

  $.ajax({
    type: "POST",
    url: "songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
    console.log(data);
    var listItem = document.createElement("li");
    listItem.id = data.id;
    listItem.className = 'songs';
    listItem.innerHTML = "<div onclick=deleteSong("+ data.id +") class='btn btn-danger'>Delete</div> " + name;
    list = document.getElementById('songlist');
    list.appendChild(listItem);
  })
  .fail(function(error){
    console.log(error)
    error_message = error.responseText;
    msg = document.getElementById('error-msg');
    msg.innerHTML = error_message;
  });
}

function deleteSong(songId){

    $.ajax({
      type: "DELETE",
      url: `songs/${songId}.json`,
      contentType: "application/json",
      dataType: "json"
    })
    .done(function(data){
      var item = document.getElementById(songId);
      item.parentNode.removeChild(item);
    });

}

function deleteAllSongs() {
  songs = document.getElementsByClassName('songs');
  songlist = Array.from(songs);
  songlist.splice(0,1);
  console.log(songlist);

  songlist.forEach(function(song){
    id = song.getAttribute('id');
    deleteSong(id);
  })
}
