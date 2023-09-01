![](https://img.shields.io/badge/Microverse-blueviolet)

# API documentation

## ![](https://img.shields.io/badge/-POST-orange) Register

`https://back-end-track-app.onrender.com/api/v1/register`

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

`https://back-end-track-app.onrender.com/api/v1/authentication`

![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
```
{
  "username": "vichuge",
  "password": "admin1234"
}
```

## ![](https://img.shields.io/badge/-GET-brightgreen) List elements

### Request headers:

| Key | value |
| --- | --- |
| Authorization | eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjkzMjc2MDF9.JriLeCaJdXi1kkWTtfxleSzLTTmhnOvOHlHughTJSHw |

*token example

`https://back-end-track-app.onrender.com/api/v1/lists`

## ![](https://img.shields.io/badge/-GET-brightgreen) Records

### Request headers:

| Key | value |
| --- | --- |
| Authorization | eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjkzMjc2MDF9.JriLeCaJdXi1kkWTtfxleSzLTTmhnOvOHlHughTJSHw |

*token example

`https://back-end-track-app.onrender.com/api/v1/records`

## ![](https://img.shields.io/badge/-POST-orange) Create record

### Request headers:

| Key | value |
| --- | --- |
| Authorization | eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjkzMjc2MDF9.JriLeCaJdXi1kkWTtfxleSzLTTmhnOvOHlHughTJSHw |

*token example

`https://back-end-track-app.onrender.com/api/v1/records`

![](https://img.shields.io/badge/JSON-blue?style=for-the-badge)
```
{
    "times":3,
    "list_id":1,
}
```