package rikkei.academy.service;

import rikkei.academy.service.CategoryService.CategoryServiceIMPL;
import rikkei.academy.service.CategoryService.ICategoryService;
import rikkei.academy.service.ChannelService.ChannelServiceIMPL;
import rikkei.academy.service.ChannelService.IChannelService;
import rikkei.academy.service.CommentService.CommentServiceIMPL;
import rikkei.academy.service.CommentService.ICommentService;
import rikkei.academy.service.Playlist.IPlaylist;
import rikkei.academy.service.Playlist.PlaylistServiceIMPL;
import rikkei.academy.service.RoleService.IRoleService;
import rikkei.academy.service.RoleService.RoleServiceIMPL;
import rikkei.academy.service.UserService.IUserService;
import rikkei.academy.service.UserService.UserServiceIMPL;
import rikkei.academy.service.VideoService.IVideoService;
import rikkei.academy.service.VideoService.VideoServiceIMPL;

public class Service {
    private static Service instance;
    private static final IRoleService roleService = new RoleServiceIMPL();
    private static final IUserService userService = new UserServiceIMPL();
    private static final IChannelService channelService = new ChannelServiceIMPL();
    private static final IVideoService videoService = new VideoServiceIMPL();
    private static final ICategoryService categoryService = new CategoryServiceIMPL();
    private static final IPlaylist playlistService = new PlaylistServiceIMPL();
    private static final ICommentService commentService = new CommentServiceIMPL();

    public IRoleService getRoleService() {
        return roleService;
    }

    public IUserService getUserService() {
        return userService;
    }
    public IVideoService getVideoService(){return videoService;}
    public IChannelService getChannelService() {
        return channelService;
    }
    public ICategoryService getCategoryService() {
        return categoryService;
    }
    public IPlaylist getPlaylistService(){return playlistService;}
    public ICommentService getCommentService(){
        return commentService;
    }


    public static synchronized Service getInstance() {
        if (instance == null) instance = new Service();
        return instance;
    }
}
