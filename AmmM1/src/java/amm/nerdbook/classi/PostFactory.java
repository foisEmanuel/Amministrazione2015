

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.classi;

import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author emanuelfois
 */
public class PostFactory {

    //Pattern Design Singleton
    private static PostFactory singleton;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }

    private ArrayList <Post> listaPost = new ArrayList <Post>();

    private PostFactory() {
        
        UtenteRegistratoFactory utenteregistratoFactory = UtenteRegistratoFactory.getInstance();

        //Creazione Post
        Post post1 = new Post();
        post1.setContent("Ciao,mi chiamo Marco e sono sessodipendente!");
        post1.setId(0);
        post1.setUser(utenteregistratoFactory.getUtenteRegistratoById(0));

        Post post2 = new Post();
        post2.setContent(".jpg");
        post2.setId(1);
        post2.setUser(utenteregistratoFactory.getUtenteRegistratoById(0));
        post2.setPostType(Post.Type.IMAGE);

        Post post3 = new Post();
        post3.setContent(".jpg");
        post3.setId(2);
        post3.setUser(utenteregistratoFactory.getUtenteRegistratoById(0));
        post3.setPostType(Post.Type.IMAGE);

        Post post4 = new Post();
        post4.setContent("melo");
        post4.setId(3);
        post4.setUser(utenteregistratoFactory.getUtenteRegistratoById(0));

        Post post5 = new Post();
        post5.setContent("");
        post5.setId(4);
        post5.setUser(utenteregistratoFactory.getUtenteRegistratoById(0));
        post5.setPostType(Post.Type.IMAGE);

        listaPost.add(post1);
        listaPost.add(post2);
        listaPost.add(post3);
        listaPost.add(post4);
        listaPost.add(post5);
    }

    public Post getPostById(int id) {
        for (Post post : this.listaPost) {
            if (post.getId() == id) {
                return post;
            }
        }
        return null;
    }

    public List getPostList(UtenteRegistrato utr) {

        List<Post> listaPost = new ArrayList<>();

        for (Post post : this.listaPost) {
            if (post.getUser().equals(utr)) {
                listaPost.add(post);
            }
        }
        return listaPost;
    }
}