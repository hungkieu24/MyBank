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

const dataSections = {
    vision: [
        { text: "1) Số 1 về quy mô lợi nhuận", img: "./img/about/number1.svg" },
        { text: "Dẫn đầu về chuyển đổi số trong ngành ngân hàng", img: "./img/about/number2.svg" },
        { text: "Ngân hàng hàng đầu về quản trị rủi ro", img: "./img/about/number3.svg" },
        { text: "Dẫn đầu về chất lượng nguồn nhân lực", img: "./img/about/number4.svg" },
        { text: "Dẫn đầu về quản trị môi trường, xã hội & doanh nghiệp", img: "./img/about/number5.svg" },
        { text: "Phấn đấu phát hành cổ phiếu và niêm yết trên TTCK quốc tế", img: "./img/about/number6.svg" }
    ],
    "core-values": [
        { text: "Trách nhiệm xã hội và sự bền vững", img: "./img/about/value1.svg" },
        { text: "Sáng tạo và đổi mới", img: "./img/about/value2.svg" },
        { text: "Trách nhiệm xã hội và sự bền vững", img: "./img/about/value1.svg" },
        { text: "Sáng tạo và đổi mới", img: "./img/about/value2.svg" },
        { text: "Trách nhiệm xã hội và sự bền vững", img: "./img/about/value1.svg" },
        { text: "Chuyên nghiệp và tận tâm", img: "./img/about/value3.svg" }
    ],
    culture: [
        { text: "Tinh thần đồng đội", img: "./img/about/culture1.svg" },
        { text: "Tôn trọng khách hàng", img: "./img/about/culture2.svg" },
        { text: "Tinh thần đồng đội", img: "./img/about/culture1.svg" },
        { text: "Tôn trọng khách hàng", img: "./img/about/culture2.svg" },
        { text: "Trung thực và minh bạch", img: "./img/about/culture3.svg" },
        { text: "Trung thực và minh bạch", img: "./img/about/culture3.svg" }
    ]
};

const itemsPerPage = 3;

function createCarousel(sectionId, data) {
    let currentIndex = 0;
    let direction = 1; // 1: Sang phải, -1: Sang trái

    function renderCards() {
        const container = document.querySelector(`#container-${sectionId}`);
        container.innerHTML = "";

        const pageItems = data.slice(currentIndex, currentIndex + itemsPerPage);

        pageItems.forEach(item => {
            const card = document.createElement("div");
            card.className = "card";
            card.innerHTML = `
                <img src="${item.img}" alt="${item.text}" />
                <p>${item.text}</p>
            `;
            container.appendChild(card);
        });
    }

    function renderPagination() {
        const pagination = document.querySelector(`#pagination-${sectionId}`);
        pagination.innerHTML = "";

        const prevButton = document.createElement("button");
        prevButton.innerHTML = `<i class="fa-solid fa-arrow-left-long pagination__icon"></i>`;
        prevButton.disabled = currentIndex === 0;
        prevButton.classList.toggle("disabled", currentIndex === 0);
        prevButton.addEventListener("click", () => {
            if (currentIndex > 0) {
                currentIndex--;
                renderCards();
                renderPagination();
            }
        });
        pagination.appendChild(prevButton);

        const nextButton = document.createElement("button");
        nextButton.innerHTML = `<i class="fa-solid fa-arrow-right-long pagination__icon"></i>`;
        nextButton.disabled = currentIndex + itemsPerPage >= data.length;
        nextButton.classList.toggle("disabled", currentIndex + itemsPerPage >= data.length);
        nextButton.addEventListener("click", () => {
            if (currentIndex + itemsPerPage < data.length) {
                currentIndex++;
                renderCards();
                renderPagination();
            }
        });
        pagination.appendChild(nextButton);
    }

    function autoSlide() {
        if (currentIndex + itemsPerPage >= data.length) {
            direction = -1; // Đổi hướng sang trái
        } else if (currentIndex === 0) {
            direction = 1; // Đổi hướng sang phải
        }

        currentIndex += direction;
        renderCards();
        renderPagination();
    }

    renderCards();
    renderPagination();
    setInterval(autoSlide, 3000);
}

// Khởi tạo carousel cho từng phần
Object.keys(dataSections).forEach(sectionId => {
    createCarousel(sectionId, dataSections[sectionId]);
});



document.getElementById("date").addEventListener("click", function () {
    this.showPicker();
});

// Đóng mở modal
window.addEventListener("DOMContentLoaded", initJsToggle);

function initJsToggle() {
    const $ = document.querySelector.bind(document);
    const $$ = document.querySelectorAll.bind(document);
    $$(".js-toggle").forEach((button) => {
        const target = button.getAttribute("toggle-target");
        if (!target) {
            document.body.innerText = `Cần thêm toggle-target cho: ${button.outerHTML}`;
        }
        button.onclick = (e) => {
            e.preventDefault();
            if (!$(target)) {
                return (document.body.innerText = `Không tìm thấy phần tử "${target}"`);
            }
            const isHidden = $(target).classList.contains("hide");

            requestAnimationFrame(() => {
                $(target).classList.toggle("hide", !isHidden);
                $(target).classList.toggle("show", isHidden);
            });
        };

        document.onclick = function (e) {
            if (!e.target.closest(target)) {
                const isHidden = $(target).classList.contains("hide");
                if (!isHidden) {
                    button.click();
                }
            }
        };

    });
}

document.addEventListener("DOMContentLoaded", async function () {
    try {
        const response = await fetch("data/team.json");
        const teamMembers = await response.json();

        const teamHTML = teamMembers.map((member, index) => `
            <div class="col-xl-3 col-md-6 col-sm-6">
                <div class="mil-team-card mil-mb-30 mil-up">
                    <div class="mil-portrait mil-mb-30">
                        <img src="${member.image}" alt="portrait">
                    </div>
                    <h5 class="mil-light mil-mb-15">${member.name}</h5>
                    <button class="mil-btn mil-ssm js-toggle" toggle-target="#modal-${index}">Xem thêm</button>
                </div>
            </div>
        `).join("");

        const modalHTML = teamMembers.map((member, index) => `
            <div id="modal-${index}" class="modal modal--large hide">
                <div class="modal__content">
                    <button class="modal__close js-toggle" toggle-target="#modal-${index}">&times;</button>
                    <div class="row">
                        <div class="col-5">
                            <div class="modal__img-wrap">
                                <img class="modal__img" src="${member.image}" alt="portrait">
                            </div>
                        </div>
                        <div class="col-7">
                            <div class="modal__info">
                                <div class="modal__text">${member.name}</div>
                                <div class="modal__text">${member.group}</div>
                                <a href="tel:${member.phone}" class="modal__link">Liên hệ: ${member.phone}</a>
                                <a href="mailto:${member.email}" class="modal__link">Email: ${member.email}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal__overlay js-toggle" toggle-target="#modal-${index}"></div>
            </div>
        `).join("");

        document.getElementById("team-list").innerHTML = teamHTML;
        document.getElementById("modal-container").innerHTML = modalHTML;
        initJsToggle();
    } catch (error) {
        console.error("Lỗi khi tải dữ liệu:", error);
    }
});

document.addEventListener("DOMContentLoaded", function () {
    var feedbackButton = document.getElementById("feedback-button"); // Nút mở form
    var form = document.getElementById("feedback-form");

    if (feedbackButton && form) {
        feedbackButton.addEventListener("click", function () {
            form.scrollIntoView({ behavior: "smooth" });
        });
    }
});


// Khi nhấn vào liên kết, cuộn tới form tìm feedback
document.getElementById('feedback-link').addEventListener('click', function (event) {
    event.preventDefault(); // Ngăn chặn hành động mặc định của liên kết (chuyển trang)

    var form = document.getElementById('feedback-form');
    if (form) {
        form.scrollIntoView({behavior: 'auto'});
    }

    // Nếu bạn muốn sau khi cuộn, trang vẫn chuyển đến "showfb", hãy thêm đoạn này:
    setTimeout(function () {
        window.location.href = "showfb"; // Chuyển hướng đến "showfb" sau khi cuộn
    }, 100); // Thời gian trễ để cuộn trang trước khi chuyển hướng
});

