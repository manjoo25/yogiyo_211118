<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="search d-flex justify-content-center align-items-end">
    <div class="input-group mt-2 my-5 col-5">
        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
        <div class="input-group-append">
            <button class="btn searchBtn btn-outline-secondary" type="button">검색</button>
        </div>
    </div>
</div>
<nav class="category mb-3">
    <ul class="nav">
        <li class="nav-item"><a href="" class="nav-link">전체보기</a></li>
        <li class="nav-item"><a href="" class="nav-link">야식</a></li>
        <li class="nav-item"><a href="" class="nav-link">피자/양식</a></li>
        <li class="nav-item"><a href="" class="nav-link">중식</a></li>
        <li class="nav-item"><a href="" class="nav-link">한식</a></li>
        <li class="nav-item"><a href="" class="nav-link">일식/돈까스</a></li>
        <li class="nav-item"><a href="" class="nav-link">분식</a></li>
    </ul>
</nav>
<div id="restInfo" class="d-flex align-items-start">
    <div class="myInfoTable">
        <div class="payment py-2 pl-3">결제하기</div>
        <div class="infoBox py-2 pl-3">배달정보</div>
        <div class="info d-flex justify-content-between align-items-center m-3">
            주소<input type="text" name="address" class="address form-control col-10 m-1" placeholder="(필수)상세주소 입력">
        </div>
        <div class="info d-flex justify-content-between align-items-center m-3">
            휴대전화번호<input type="text" name="phoneNumber" class="phoneNumber form-control col-10 m-1" placeholder="(필수)휴대전화 번호 입력">
        </div>
        
        <div class="infoBox py-2 pl-3">주문시 요청사항</div>
        <textarea name="request" rows="5" class="m-3"></textarea>
        
        <div class="infoBox py-2 pl-3">결제수단 선택</div>
        <div>
            <div class="font-weight-bold m-3">요기서결제</div>
            <div class="paymentMethod d-flex flex-wrap justify-content-start">
                <div class="text-center pt-2 m-2">
                    <img src="data:image/png;base64,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" width="22">
                    <span>네이버페이</span>
                </div>
                <div class="text-center pt-2">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAABr5JREFUeF7lm1tsVUUUhr+CgpJIAGlVtC+o9QJo9cFgxAcNsQhFA6K9JDwJXkuiMYHQ8kagkjQRrRe0b4RIRWna2KpgTNO0GptGsWjjLdXEmBYsaUv0ocZr/pO96zm755yZfTvnFFfSkHBmz1rr2zNr1qyZXcT/XIpy5H8pcCtwI1AGlACXOX//AL8BvwJnge+Ab4EvgJ/jti8uAPOA+4ENwD3AdQEd+R7oBjqBD4A/AvaT8bGoAdwEPAVUA0sjNnYMaAVeBb6Jqu+oANwGNACbgDlRGZehn7+Bd4D9wGBYXWEBXA48DzwKhO3Lry8C0QLUA+N+H3bbhzG6FngJEIR8iqbGDuCtIEYEAXCp4/i2IApjfOZ14Blgyo8OvwCuAt4Dyv0oyWHbz5yVR8uplfgBcL2zFC236jl/jYaBCkD/GsUWgNbxXuBKY4+F0WAUWAP8YDLHBoCGfR9Q6G/e66tGwF1OdpmRgwmAAt4nBTznTS9YMUEjIWNgNAHQOlto0d7ktPf3Q8CTmR7KBqAGeNOvtgJtXwUcS2dbJgBKbpRvR53P54vPL85OdMJrQCYAF8LQt5oK6QAoyVHwMG5q1q1bx4YN2vHaSWNjIyMjI8bGTU1NzJ8/39hODTo7Ozlx4oRNW+0d5NuXyY3TAXgb2GLT4549e9i7d69N00QbGbtx40Zj+/Pnz7Nw4UJjOzVoaGhg/35tDK1E+wVt1afFC0D7+a9s3r568AtAz2zdupUjR45ktTZGAH8BNztVp4QNXgDNQJ0Vy4AAxsfHWbFiBWfOnMmoJkYA0vmis2maAeBiQBPUOvIHGQHS2t7ezqZNqp2kl5gBaEW4GvjTOwIeADps337QKeD2X1tby9GjR9OqixmAdFYCXV4AbwDbcwXg3LlzrFy5krNnZ+5ccwDgNad2mRIDVIH1Vb0NOgVcyMePH2fLlpkLTg4AKMlTwJ8GoLr9T37eftgp4Oqqqqri2LHULDUHAKRecWDEXQU0J97NB4CxsbHEqqB/XckRgPXA+y6A54CmfACQTo0AjQRXBGPpUrvFyGcilOzis8BBF4AKio/lC4D0KhYoJkiGh4dZvtyu/hICQCIQugDagQfzCUCrgVYFrQ69vb2sWaM6hllCAGgDHnIBfATca1aX2iLsKuDV19raSk1NDS0tLWzbZleHCQHgQ+A+F0A/cEecAJqbm9mxQ+cX2WXz5s2UlJRw6JAKOWYJAeBT4M6cAdi9e3diXm/fnj3X0lSorq6mu1uHwmaJCkDsU0D5v3aCg4ODxgDX0dFBZWUlc+fONRIIASBlCsQeBIeGhhJBTsGtp6eHOXOM9Raj82oQAkBKEIx9GRwdHWXZsmUJpw4cOMDOnTutHDQ1CgEgZRmMPRGamJhgyZIlCX9U7hoYGGDVqlUm/4y/hwCQkgjFngpPTk6yePHiaYfKy8vp7+9n3jzdpgkuIQCkpMKxb4a8AORyfX09+/btC+59uBig+TiaXBKLdTucDoCifF9fH6tXrw4MIeAImLEdlgG+A6GfTDAdACktKyvj1KlTLFiwIBCEgAB00eppKUweAbGWxDIBkBF1dXUoUwwiAQHoMEMXPVIAxFoUzQagqKiIkydPsnbtWt8MAgBQDe6adEVRKdelJ3PC7pgZxRRwPS4tLeX06dMsWrTIF4QAAA4CWgIT4j0X0FXWoTgORrKNANcYpcqHDx+OE4AORlQLVMBPC0D/qQLdwzZWRDkCXH1tbW1Zzwy8dvkcAarD63rftKQ7G9Sl5s9tRkFFRQXr1yufMMvU1BS7du0yNiwuLk4cudlKV1dXIn5YiN6+Dkd19JcVgH70vSRaGJDvJtNLnw0AJe26sm5Xmcy3a2b9Og67AZj0Ns12RUZlWt3OvhBEMU0XrGeI6ZKU6lKPz3ICr2Q78TYBuAT4GLh9lkIYAO4Gfs9kvwmAnrvCgXDtLIOgtV61dc3/jGIDQA/LeV2V1a3R2SC65yDnfzQZawvAhaDbSIU+EvTmdVna6Lyc8gPAnQ7aRRVqTNCcV3Ur67C3yQOyjRwFxheAJ0zDK8e/K9qrtpkx4AVZBrP58AjwMlCcY0e96rS91cWutOu8yTa/U8Dbn6qcjc7VmmgK/SaL//tdub3yFG0cZmR4tt2EBeDqucX5ekv3XczHObbWpW8nx7Vj1e3IlI1NkG6jAuDq1mex+nBSN831eWyUoqGu7aw2NdP7+bAKogbg2nORsxSp9qZjd21EgsjXSZ/O6iwvcbcvSokLgNdG1eBVZxAI/SV/PK22+nA6+eNpla31Vai+/YlVcgUgVifCdP4vzswpX7C2wLUAAAAASUVORK5CYII=" width="22">
                    <span>네이버페이</span>
                </div>
                <div class="text-center pt-2">
                    <img src="data:image/png;base64,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" width="22">
                    <span>네이버페이</span>
                </div>
            </div>
        </div>
        <div>
            <div class="font-weight-bold m-3">현장결제</div>
            <div class="paymentMethod d-flex flex-wrap justify-content-start">
                <div class="text-center pt-2">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAABLVJREFUeF7tm39oW1UUx78nyVxQ6zY6xv6YMFDBwQbzD0Vw4A8YTliTTi2IyysdEyduf2wkQaEVBmtRSML2x9QJDkNf5z9V1nQDJ4I/sILoHxtsMGGKBfeHaEO7Vke0yTtyX5PykjZ79+al6ct7vv8e79x77vm8c+8999x7CSv8dL+c3MlBPMHAdoaxnYAtYNoCQqhKNaMI4psM3CQErhFwjUr4buzj1JWVbCI1u/Kn+vrCHcXOPRSgF8C8F6D1znTwDIgussGfzoXyl77OZgvO6qsu3TQA3X1Ht7Kx5jAz9wHY2MxGWuqaIqIsBebfHcuemmyGDscAIrFjDxIF+pkptsStm9HC5epgFIl4hNkYGh85+bMTNQ0DEK5+X6mzn0EJAsJOGtFoWQYKBE7PBvNDjXaNhgDs1eK7AoAO0NZGG9/ccjxpANpFPTOhWq8ygKiW6GfG8Za5u6xFZrfA8ZyeHpItIuSkAfT0vH5vIXyPTuBuFQWtlmXQWLjwtzY6+t5fMrqlAAjj/wnf/RmAXTKVukBmYm3h9nMyEGwBlI3/EcDDLjBMpQk/rS3cftQOwh0BtOGfrwVk6wl3BNClJc+7vc/buYQYEy7oqX315OoCMEd7YNBOQTt8J2Cg3uywLABznmf6ynVTXaO0GUWD+Onl4oQlAMoR3nX3BDmNWl1bjidng/lttRHjEgARLX4CoIFmqXVXPTw4rmfesrapCoBY2DAFr65WbL/SsMy1A5d2WBdQVQCiWvwjBonlrGcfAmdzeuZAxcBFAGI9bxRDNzwz8NX7hYxiIFR8qJJPWAQQ7U2mmDkh8+s3rOvA/hf3YMe2B7B5U6dMkRWT+f2PPK5e/wXnPrmE6VtzUnqIKJ0bTiUXF0MLI//G32QyOcL4U4PHsH5dh5SyVgnN3JrD0YGTshCmZoNT94sZwfSArli8m4jOyzT2yMEe7H7yMRnRlst88c0POH12VEovM++7MJIZMwFEehM6GDGZkh+k31x1t6/XTtEdDiXekTFDJAJGxofT2gIALT4tm73NDafkFKyCVKlk4PkDb0hq5plxPbOBRN7eCPJlyVJwMwBhQ7TXHNuknkCJHqGoljzM4NNSJTwmRKAjFNGS7wP8msdskzSHzlCXFv+WQO2S6pI0TE6MwRMU0eK/em/lJwcA4EmKxBLzng9/6/EQqfSIlmBZXl6UUwbgpWlQ/ND/Aah2Ae95gOIg6CkAC4Og2jToKQBiGlQNhLwEoBwIqYXCXgIA0BnlxZCXAJiLoVYvhz//8nt8eC5nxlSv7I/i2Wcer4qvnH5XXg63MiEiEhYvvdqPf+eLptF3rQlh9OzbiwCcflfLB5QTIiYAhZSYky7g1EC78koArCkxlaSoEwCigU5d3K68bBeoSoqqpMU9khStTouXXUdqY8QLafElGyMCgOzWWNtvjNTbGjO9QHJz1C1bY2JQ/DM/rbQ1Vndz1JwN/L49Xo4J/HtAQgDw/REZAcHXh6Qqcamvj8lVIPj6oKSA4PujshYI/jwsXekKbegJtoekK7bZHpe3QvDthQlrysa3V2asEHx9aaoCwtfX5qze4NuLk7Vb5b69OlsLwreXp2tBVN7dfn3+P6QM3eeAI/LXAAAAAElFTkSuQmCC" width="22">
                    <span>신용카드</span>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="paymentTable">
            <div class="orderHistory py-2 pl-3">주문내역</div><hr>
            <div class="restName my-2 ml-3">네네치킨-관양지구점</div><hr>
            <div class="orderHistoryMenu d-block">
                <div class="d-flex justify-content-between">
                    <div class="orderMenu col-8 my-2">반반반</div>
                    <div class="price col-4 my-2 text-right">32,000원</div>
                </div>
                <div class="d-flex justify-content-between">
                    <div class="orderMenu col-8 my-2">반반반</div>
                    <div class="price col-4 my-2 text-right">32,000원</div>
                </div>
            </div><hr>
            <div class="totalPay d-flex justify-content-between">
                <div class="col-8 my-3">총 결제 금액</div>
                <div class="totalPrice col-4 m-3">34,500원</div>
            </div><hr>
        </div>
        <div class="my-3"></div>
        <button type="button" class="btn paymentBtn font-weight-bold">결제하기</button>
    </div>
</div>