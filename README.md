
# Cheapshorts

It is a clone of Inshorts using api key provided by newsapi.org, unfortunately due to key being free the content was truncated to 200 chars.



## API Reference

#### Get all items

```http
  GET https://newsapi.org/v2/top-headlines?country=us&apiKey=YourApiKey
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |
| `country` |`string`  | The 2-letter ISO 3166-1 code of the country you want to get headlines for. |
|`category` |`string`|The category you want to get headlines for.|
|`sources`|`string`|A comma-seperated string of identifiers for the news sources or blogs you want headlines from. |
|`q`|`string`|Keywords or a phrase to search for.|
|`pageSize`|`int`|The number of results to return per page (request). 20 is the default, 100 is the maximum.|
|`page`|`int`|Use this to page through the results if the total results found is greater than the page size.|







#### Response object



| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `status`  | `string` | If the request was successful or not. |
|`totalResults`|`int`|The total number of results available for your request.|
|`articles`|`array[article]`|The results of the request.|
|`source`|`object`|The identifier id and a display name name for the source this article came from|
|`author`|`string`|The author of the article|
|`title`|`string`|The headline or title of the article.|
|`description`|`string`|A description or snippet from the article.|
|`url`|`string`|The direct URL to the article.|
|`urlToImage`|`string`|The URL to a relevant image for the article.|
|`publishedAt`|`string`|The date and time that the article was published, in UTC (+000)|
|`content`|`string`|The unformatted content of the article, where available. This is truncated to 200 chars.|




## Screenshots

![](https://user-images.githubusercontent.com/90124241/177031672-37e0bac6-7036-4271-af14-d6ed7637b30f.png)
![](https://user-images.githubusercontent.com/90124241/177031695-f930c3b5-9334-4971-84fb-4823c9305219.png)
![](https://user-images.githubusercontent.com/90124241/177031721-2e77b936-77e7-4812-b992-2d0755f3ce1d.png)
