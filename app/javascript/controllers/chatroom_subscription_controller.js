import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "input","button"]



  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      // { received: data => console.log(data) },
      // { received: data => this.messagesTarget.insertAdjacentHTML("beforeend", data) },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )

    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  resetForm(event) {
    event.target.reset()
  }

  // enterKey(event) {
  //   event.keyCode == "Enter"
  //   console.log("diste enter")
  // }

//   document.getElementById("pw")
//     .addEventListener("keyup", function(event) {
//     event.preventDefault();
//     if (event.keyCode === 13) {
//         document.getElementById("myButton").click();
//     }
// });

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
