function submitSong() {
  var input = document.getElementById('new-song');
  var newSongName = input.value;
  createSong(newSongName);

  input.value = null;
}

function createSong(name) {

  var listItem = document.createElement("li");
  listItem.innerHTML = '<i id="trash" class="fa fa-trash" aria-hidden="true"></i> ' + name;
  list = document.getElementById('songlist');
  list.appendChild(listItem);

  var newSong = { name: name };

  $.ajax({
  type: "POST",
  url: "songs.json",
  data: JSON.stringify({
      song: newSong
  }),
  contentType: "application/json",
  dataType: "json"
});
}
