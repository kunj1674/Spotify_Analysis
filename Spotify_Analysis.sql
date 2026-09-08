select * from spotify_tracks

--Q1)Which are the top 10 most popular tracks based on the track Popularity?
select track_name, artist_name, track_popularity from spotify_tracks
order by track_popularity desc
limit 10

--Q2)Which artists have the highest average track popularity, and how many tracks do they have in the dataset?
select artist_name, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity from spotify_tracks
having count(track_name) >= 5
order by avg_track_popularity desc
limit 10

--Q3)How does average track popularity vary across different album types Album, Single, and Compilation?
select album_type, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity, max(track_popularity) as max_track_popularity, min(track_popularity) as min_track_popularity from spotify_tracks
group by album_type
order by avg_track_popularity desc

--Q4)How has average track popularity changed across different release years?
select release_year, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity, max(track_popularity) as max_track_popularity, min(track_popularity) as min_track_popularity from spotify_tracks
where release_year is not null
group by release_year
order by release_year

--Q5)Which artists have the highest number of tracks in the dataset, and how does their track volume compare with their average track popularity?
select artist_name, artist_popularity, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity from spotify_tracks
group by artist_name, artist_popularity
order by total_tracks desc
limit 10

----Adding a popularity tier column in the table.
select artist_name, artist_popularity, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity, 
case 
    when avg(track_popularity)>=80 then 'High'
	when avg(track_popularity)>=60 then 'Medium'
	else 'Low'
end as popularity_category
from spotify_tracks
group by artist_name, artist_popularity
order by total_tracks desc
limit 10

--Q6)Do explicit tracks have higher or lower average popularity than non-explicit tracks?
select
    case
        when explicit = TRUE then 'Explicit'
        else 'Non-Explicit'
    end as content_type,
count(track_name) as total_tracks, round(AVG(track_popularity), 2) as avg_track_popularity, max(track_popularity) as max_track_popularity, min(track_popularity) as min_track_popularity from spotify_tracks
group by 
    case
        when explicit = TRUE then 'Explicit'
        else 'Non-Explicit'
    end
order by avg_track_popularity desc

--Q7)Which months have the highest average track popularity, and which months have the highest number of track releases?
select release_month, count(track_name) as total_tracks, round(avg(track_popularity), 2) as avg_track_popularity, max(track_popularity) as max_track_popularity,min(track_popularity) as min_track_popularity from spotify_tracks
group by release_month
order by release_month