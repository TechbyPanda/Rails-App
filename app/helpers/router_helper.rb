module RouterHelper
    def routes_arr
        [
            { name: 'Posts', link: '/posts', allowed: true },
            { name: 'All Posts', link: '/all_posts', allowed: true },
            { name: 'Users', link: '/users', allowed: true },
            { name: "Slack", link: "/slack", allowed: false},
            { name: "Posts Table", link: '/posts_table', allowed: true}
        ]
    end

    def filtered_routes
        routes_arr.select { |route| route[:allowed] } 
    end
end
