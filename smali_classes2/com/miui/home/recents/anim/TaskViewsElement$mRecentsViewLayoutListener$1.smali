.class public final Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;
.super Ljava/lang/Object;
.source "TaskViewsElement.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/TaskViewsElement;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/TaskViewsElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/TaskViewsElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/TaskViewsElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/TaskViewsElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const-string v0, "TaskViewsElement"

    const-string v1, "onGlobalLayout mRecentsViewLayoutListener"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getRecentView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$setMReLoadTaskFinished$p(Lcom/miui/home/recents/anim/TaskViewsElement;Z)V

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 135
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mRecentsViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getMRunningTaskIndex$p(Lcom/miui/home/recents/anim/TaskViewsElement;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$updateTaskViewToInitPosition(Lcom/miui/home/recents/anim/TaskViewsElement;Landroid/graphics/RectF;IZ)V

    return-void
.end method
