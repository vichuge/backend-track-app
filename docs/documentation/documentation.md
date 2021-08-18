![](https://img.shields.io/badge/Microverse-blueviolet)

# API documentation

## ![](https://img.shields.io/badge/-POST-orange) Register

`https://stormy-headland-20983.herokuapp.com/api/v1/register`

![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
```
{
    "user":
    {
        "username": "vichuge",
        "password": "admin1234"
    }
}
```

## ![](https://img.shields.io/badge/-POST-orange) Login

`https://stormy-headland-20983.herokuapp.com/api/v1/login`

![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
```
{
  "username": "vichuge",
  "password": "admin1234"
}
```

## ![](https://img.shields.io/badge/GET-green?style=for-the-badge) Records
## ![](https://img.shields.io/badge/-GET-brightgreen) Records

### Request headers:

| Authorization | eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjkzMjc2MDF9.JriLeCaJdXi1kkWTtfxleSzLTTmhnOvOHlHughTJSHw |

*token example

`https://stormy-headland-20983.herokuapp.com/api/v1/records`

## ![](https://img.shields.io/badge/-POST-orange) Create record

### Request headers:

| Authorization | eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjkzMjc2MDF9.JriLeCaJdXi1kkWTtfxleSzLTTmhnOvOHlHughTJSHw |

*token example

`https://stormy-headland-20983.herokuapp.com/api/v1/records`