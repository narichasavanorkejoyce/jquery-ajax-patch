'use strict'

const onSuccess = function (data) {
  if (!data) {
    console.warn('Either you deleted something, or something went wrong.')
  } else if (data.book) {
    console.log(data.book)
  } else {
    console.table(data.books)
  }
}

// Now, what if we don't expect data back?
const onSuccessButNoContent = function () {
  console.log('Your request was successful and returned no content')
}

const onCreateSuccess = function (data) {
  console.log('You created a book! The id is ' + data.book.id)
}

const onError = function (response) {
  console.error(response)
}

module.exports = {
  onSuccess,
  onError,
  onSuccessButNoContent,
  onCreateSuccess
}
