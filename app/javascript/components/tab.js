const initProfileTabs = () => {

  console.log("hello");
  let triggerTabList = [].slice.call(document.querySelectorAll('#profileTab button'))
  console.log(triggerTabList);
  triggerTabList.forEach(function (triggerEl) {
  let tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', function (event) {
    event.preventDefault()
    tabTrigger.show()
  })
})
};

export { initProfileTabs };
