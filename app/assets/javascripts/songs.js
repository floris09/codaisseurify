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
  .done(function(){
    var listItem = document.createElement("li");
    listItem.innerHTML = '<div class="btn btn-primary">Delete</div> ' + name;
    list = document.getElementById('songlist');
    list.appendChild(listItem);
  })
  .fail(function(error){
    error_message = error.responseJSON.title[0];
    showError = document.getElementById('error-msg');
    showError.innerHTML = error_message;
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

function deleteAllSongs(songIds) {

  songIds.forEach(function(id) {
    $.ajax({
      type: "DELETE",
      url: `songs/${id}.json`,
      contentType: "application/json",
      dataType: "json"
    })
    .done(function(){
      var item = document.getElementById(id);
      item.parentNode.removeChild(item);
    });

  });

}
