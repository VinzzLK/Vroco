.class Lcom/miui/home/launcher/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p0}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 469
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    .line 470
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$600(Lcom/miui/home/launcher/Folder;)V

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 475
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setGridViewScrolled(Z)V

    .line 477
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setGridViewScrolling(Z)V

    return-void
.end method
