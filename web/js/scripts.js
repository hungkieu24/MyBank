/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function load(selector, path) {
    const cached = localStorage.getItem(path);
    if (cached) {
        document.querySelector(selector).innerHTML = cached;
    }

    fetch(path)
            .then((res) => res.text())
            .then((html) => {
                if (html !== cached) {
                    document.querySelector(selector).innerHTML = html;
                    localStorage.setItem(path, html);
                }
            });
}
function toggleFooter() {
    const toggleButton = document.querySelector(".footer--toggle--btn");
    const footer = document.querySelector(".footer");
    const footerTop = document.querySelector(".mil-footer-top");
    const textExpand = toggleButton.querySelector(".text-expand");
    const textCollapsed = toggleButton.querySelector(".text-collapsed");
    const iconArrowRight = toggleButton.querySelector(".icon-arrow-right");

    // Toggle class để chuyển đổi trạng thái ẩn/hiện
    footerTop.classList.toggle("hidden");

    if (footerTop.classList.contains("hidden")) {
        // Khi ẩn
        textExpand.style.display = "none";
        textCollapsed.style.display = "inline";
        iconArrowRight.classList.add("rotated");
    } else {
        // Khi hiển thị
        textExpand.style.display = "inline";
        textCollapsed.style.display = "none";
        iconArrowRight.classList.remove("rotated");

        // Trượt xuống cuối trang
        footer.scrollIntoView({behavior: "smooth", block: "end"});
    }
}

function toggleHistory() {
    const toggleButton = document.querySelector(".history--toggle--btn");
    const aboutIntroductionMore = document.querySelector(".about-introduction__more");
    const textExpand = toggleButton.querySelector(".text-expand");
    const textCollapsed = toggleButton.querySelector(".text-collapsed");
    const iconArrowRight = toggleButton.querySelector(".icon-arrow-right");

    // Toggle class để chuyển đổi trạng thái ẩn/hiện
    aboutIntroductionMore.classList.toggle("show");

    if (aboutIntroductionMore.classList.contains("show")) {
        // Khi hiển thị nội dung
        textExpand.style.display = "none";
        textCollapsed.style.display = "inline";
        iconArrowRight.classList.add("rotated"); // Thêm class để xoay
    } else {
        // Khi ẩn nội dung
        textExpand.style.display = "inline";
        textCollapsed.style.display = "none";
        iconArrowRight.classList.remove("rotated"); // Xóa class để về ban đầu
    }
}


document.addEventListener("DOMContentLoaded", () => {
    const tabsSelector = "about-introduction__item";
    const contentsSelector = "about-introduction__content";

    const tabActive = `${tabsSelector}--current`;
    const contentActive = `${contentsSelector}--current`;

    // Chọn tất cả các container có class .js-tabs
    const tabContainers = document.querySelectorAll(".js-tabs");
    tabContainers.forEach((tabContainer) => {
        const tabs = tabContainer.querySelectorAll(`.${tabsSelector}`);
        const contents = tabContainer.querySelectorAll(`.${contentsSelector}`);
        tabs.forEach((tab, index) => {
            tab.addEventListener("click", () => {
                // Xóa class active khỏi tab và nội dung hiện tại
                tabContainer.querySelector(`.${tabActive}`)?.classList.remove(tabActive);
                tabContainer.querySelector(`.${contentActive}`)?.classList.remove(contentActive);

                // Thêm class active vào tab và nội dung được chọn
                tab.classList.add(tabActive);
                contents[index].classList.add(contentActive);
            });
        });
    });
});

document.addEventListener("DOMContentLoaded", () => {
    const tabsSelector = "about-timeline__num";
    const contentsSelector = "about-timeline__content";

    const tabActive = `${tabsSelector}--current`;
    const contentActive = `${contentsSelector}--current`;

    // Chọn tất cả các container có class .js-tabs
    const tabContainers = document.querySelectorAll(".js-tabs");
    tabContainers.forEach((tabContainer) => {
        const tabs = tabContainer.querySelectorAll(`.${tabsSelector}`);
        const contents = tabContainer.querySelectorAll(`.${contentsSelector}`);
        tabs.forEach((tab, index) => {
            tab.addEventListener("click", () => {
                // Xóa class active khỏi tab và nội dung hiện tại
                tabContainer.querySelector(`.${tabActive}`)?.classList.remove(tabActive);
                tabContainer.querySelector(`.${contentActive}`)?.classList.remove(contentActive);

                // Thêm class active vào tab và nội dung được chọn
                tab.classList.add(tabActive);
                contents[index].classList.add(contentActive);
            });
        });
    });
});

const data = [
  { text: "1) Số 1 về quy mô lợi nhuận", img: "./img/about/number1.svg" },
  { text: "Dẫn đầu về chuyển đổi số trong ngành ngân hàng", img: "./img/about/number2.svg" },
  { text: "Ngân hàng hàng đầu về quản trị rủi ro", img: "./img/about/number3.svg" },
  { text: "Dẫn đầu về chất lượng nguồn nhân lực", img: "./img/about/number4.svg" },
  { text: "Dẫn đầu về quản trị môi trường, xã hội & doanh nghiệp", img: "./img/about/number5.svg" },
  { text: "Phấn đấu phát hành cổ phiếu và niêm yết trên TTCK quốc tế", img: "./img/about/number6.svg" }
];
const itemsPerPage = 3;
let currentPage = 1;

function renderCards() {
  const container1 = document.querySelector(".container1");
  container1.innerHTML = "";
  const start = (currentPage - 1) * itemsPerPage;
  const end = start + itemsPerPage;
  const pageItems = data.slice(start, end);

  pageItems.forEach(item => {
    const card = document.createElement("div");
    card.className = "card";
    card.innerHTML = `
      <img src="${item.img}" alt="${item.text}" />
      <p>${item.text}</p>
    `;
    container1.appendChild(card);
  });
}

function renderPagination() {
  const pagination = document.querySelector(".pagination");
  pagination.innerHTML = "";
  const totalPages = Math.ceil(data.length / itemsPerPage);

  // Previous button
  const prevButton = document.createElement("button");
  prevButton.textContent = "<=";
  prevButton.disabled = currentPage === 1;
  prevButton.classList.toggle("disabled", currentPage === 1);
  prevButton.addEventListener("click", () => {
    if (currentPage > 1) {
      currentPage--;
      renderCards();
      renderPagination();
    }
  });
  pagination.appendChild(prevButton);

  // Next button
  const nextButton = document.createElement("button");
  nextButton.textContent = "=>";
  nextButton.disabled = currentPage === totalPages;
  nextButton.classList.toggle("disabled", currentPage === totalPages);
  nextButton.addEventListener("click", () => {
    if (currentPage < totalPages) {
      currentPage++;
      renderCards();
      renderPagination();
    }
  });
  pagination.appendChild(nextButton);
}

renderCards();
renderPagination();
