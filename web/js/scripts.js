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
        { text: "Số 1 về quy mô lợi nhuận", img: "./img/about/number1.svg" },
        { text: "Dẫn đầu về chuyển đổi số trong ngành ngân hàng", img: "./img/about/number2.svg" },
        { text: "Ngân hàng hàng đầu về quản trị rủi ro", img: "./img/about/number3.svg" },
        { text: "Dẫn đầu về chất lượng nguồn nhân lực", img: "./img/about/number4.svg" },
        { text: "Dẫn đầu về quản trị môi trường, xã hội & doanh nghiệp", img: "./img/about/number5.svg" },
        { text: "Phấn đấu phát hành cổ phiếu và niêm yết trên TTCK quốc tế", img: "./img/about/number6.svg" }
    ],
    "core-values": [
        { text: "TIMIBANK không ngừng sáng tạo để mang lại những giá trị thiết thực cho khách hàng", img: "./img/about/value1.svg" },
        { text: "Nỗ lực mở rộng danh mục khách hàng, là nguồn tài sản quý giá và đáng tự hào của TIMIBANK", img: "./img/about/value2.svg" },
        { text: "Lấy sự Chu đáo - Tận tâm với khách hàng làm tiêu chí phấn đấu.", img: "./img/about/value3.svg" },
        { text: "Để xây dựng một ngân hàng quốc gia sánh tầm với khu vực và thế giới.", img: "./img/about/value4.svg" },
        { text: "Luôn nỗ lực tìm kiếm sự Khác biệt trên nền tảng chất lượng và giá trị cao nhất.", img: "./img/about/value5.svg" },
        { text: "Đề cao tính An toàn, bảo mật nhằm bảo vệ tối đa lợi ích của khách hàng, cổ đông", img: "./img/about/value6.svg" }
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

//document.addEventListener("DOMContentLoaded", async function () {
//    try {
//        const response = await fetch("data/team.json");
//        const teamMembers = await response.json();
//
//        const teamHTML = teamMembers.map((member, index) => `
//            <div class="col-xl-3 col-md-6 col-sm-6 team-item">
//                <div class="mil-team-card mil-mb-30 mil-up team-item__wrap">
//                    <div class="mil-portrait mil-mb-30 team-item__img-wrap">
//                        <img src="${member.image}" alt="portrait" class="team-item__img">
//                    </div>
//                    <h5 class="mil-light mil-mb-15 team-item__name">${member.name}</h5>
//                    <button class="team-item__btn mil-btn mil-ssm js-toggle" toggle-target="#modal-${index}">Xem thêm</button>
//                </div>
//            </div>
//        `).join("");
//
//        const modalHTML = teamMembers.map((member, index) => `
//            <div id="modal-${index}" class="modal modal--large hide">
//                <div class="modal__content">
//                    <button class="modal__close js-toggle" toggle-target="#modal-${index}">&times;</button>
//                    <div class="row">
//                        <div class="col-5">
//                            <div class="modal__img-wrap">
//                                <img class="modal__img" src="${member.image}" alt="portrait">
//                            </div>
//                        </div>
//                        <div class="col-7">
//                            <div class="modal__info">
//                                <div class="modal__text">${member.name}</div>
//                                <div class="modal__text">${member.group}</div>
//                                <a href="tel:${member.phone}" class="modal__link">Liên hệ: ${member.phone}</a>
//                                <a href="mailto:${member.email}" class="modal__link">Email: ${member.email}</a>
//                            </div>
//                        </div>
//                    </div>
//                </div>
//                <div class="modal__overlay js-toggle" toggle-target="#modal-${index}"></div>
//            </div>
//        `).join("");
//
//        document.getElementById("team-list").innerHTML = teamHTML;
//        document.getElementById("modal-container").innerHTML = modalHTML;
//        initJsToggle();
//    } catch (error) {
//        console.error("Lỗi khi tải dữ liệu:", error);
//    }
//});

//document.addEventListener("DOMContentLoaded", async function () {
//    try {
//        const response = await fetch("data/team.json");
//        const teamMembers = await response.json();
//
//        const itemsPerPage = 4; // Số lượng thành viên hiển thị mỗi lần
//        let currentIndex = 0;
//
//        // Hàm hiển thị các thành viên
//        function renderCards() {
//            const teamList = document.getElementById("team-list");
//            teamList.innerHTML = ''; // Xóa tất cả các phần tử hiện tại
//
//            // Lấy danh sách các thành viên cần hiển thị trong phạm vi
//            const visibleMembers = teamMembers.slice(currentIndex, currentIndex + itemsPerPage);
//
//            // Hiển thị các thành viên trong phạm vi
//            const teamHTML = visibleMembers.map((member, index) => `
//                <div class="col-xl-3 col-md-6 col-sm-6 team-item">
//                    <div class="mil-team-card mil-mb-30 mil-up team-item__wrap">
//                        <div class="mil-portrait mil-mb-30 team-item__img-wrap">
//                            <img src="${member.image}" alt="portrait" class="team-item__img">
//                        </div>
//                        <h5 class="mil-light mil-mb-15 team-item__name">${member.name}</h5>
//                        <button class="team-item__btn mil-btn mil-ssm js-toggle" toggle-target="#modal-${index}">Xem thêm</button>
//                    </div>
//                </div>
//            `).join("");
//
//            // Cập nhật danh sách thành viên
//            teamList.innerHTML = teamHTML;
//            initJsToggle();
//        }
//
//        // Hàm hiển thị các modal
//        function renderModals() {
//            const modalHTML = teamMembers.map((member, index) => `
//                <div id="modal-${index}" class="modal modal--large hide">
//                    <div class="modal__content">
//                        <button class="modal__close js-toggle" toggle-target="#modal-${index}">&times;</button>
//                        <div class="row">
//                            <div class="col-5">
//                                <div class="modal__img-wrap">
//                                    <img class="modal__img" src="${member.image}" alt="portrait">
//                                </div>
//                            </div>
//                            <div class="col-7">
//                                <div class="modal__info">
//                                    <div class="modal__text">${member.name}</div>
//                                    <div class="modal__text">${member.group}</div>
//                                    <a href="tel:${member.phone}" class="modal__link">Liên hệ: ${member.phone}</a>
//                                    <a href="mailto:${member.email}" class="modal__link">Email: ${member.email}</a>
//                                </div>
//                            </div>
//                        </div>
//                    </div>
//                    <div class="modal__overlay js-toggle" toggle-target="#modal-${index}"></div>
//                </div>
//            `).join("");
//
//            document.getElementById("modal-container").innerHTML = modalHTML;
//            initJsToggle(); // Khởi tạo lại sự kiện toggle cho các modal
//        }
//
//        // Hàm hiển thị các nút điều hướng
//        function renderPagination() {
//            const prevButton = document.querySelector(".navigation__prev");
//            const nextButton = document.querySelector(".navigation__next");
//
//            prevButton.disabled = currentIndex === 0;
//            prevButton.classList.toggle("disabled", currentIndex === 0);
//
//            nextButton.disabled = currentIndex + itemsPerPage >= teamMembers.length;
//            nextButton.classList.toggle("disabled", currentIndex + itemsPerPage >= teamMembers.length);
//
//            prevButton.addEventListener("click", () => {
//                if (currentIndex > 0) {
//                    currentIndex--;
//                    renderCards();
//                    renderModals();
//                    renderPagination();
//                }
//            });
//
//            nextButton.addEventListener("click", () => {
//                if (currentIndex + itemsPerPage < teamMembers.length) {
//                    currentIndex++;
//                    renderCards();
//                    renderModals();
//                    renderPagination();
//                }
//            });
//        }
//
//        // Khởi tạo trang với dữ liệu ban đầu
//        renderCards();
//        renderModals();
//        renderPagination();
//
//    } catch (error) {
//        console.error("Lỗi khi tải dữ liệu:", error);
//    }
//});

let currentIndex = 0; // Chỉ số của trang hiện tại
const itemsPerPageLimit = 4; // Số phần tử hiển thị mỗi lần
const teamItems = document.querySelectorAll(".team-item"); // Lấy tất cả các team-item
const prevButton = document.querySelector(".navigation__prev");
const nextButton = document.querySelector(".navigation__next");

// Hàm render các team-item dựa trên trang hiện tại
function renderTeamItems() {
    const start = currentIndex * itemsPerPageLimit;
    const end = Math.min(start + itemsPerPageLimit, teamItems.length);

    // Ẩn tất cả các team-item
    teamItems.forEach(item => {
        item.style.display = "none";
    });

    // Hiển thị các team-item trong phạm vi phân trang
    for (let i = start; i < end; i++) {
        teamItems[i].style.display = "block";
    }

    // Điều chỉnh trạng thái của nút Prev
    prevButton.disabled = currentIndex === 0;
    prevButton.classList.toggle("disabled", currentIndex === 0);

    // Điều chỉnh trạng thái của nút Next
    nextButton.disabled = currentIndex + 1 >= Math.ceil(teamItems.length / itemsPerPageLimit);
    nextButton.classList.toggle("disabled", currentIndex + 1 >= Math.ceil(teamItems.length / itemsPerPageLimit));
}

// Lắng nghe sự kiện khi nhấn "Prev"
prevButton.addEventListener("click", () => {
    if (currentIndex > 0) {
        currentIndex--;
        renderTeamItems(); // Gọi lại để render lại các team-item
    }
});

// Lắng nghe sự kiện khi nhấn "Next"
nextButton.addEventListener("click", () => {
    if (currentIndex + 1 < Math.ceil(teamItems.length / itemsPerPageLimit)) {
        currentIndex++;
        renderTeamItems(); // Gọi lại để render lại các team-item
    }
});

// Gọi hàm render lần đầu tiên khi trang được tải
renderTeamItems();




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

