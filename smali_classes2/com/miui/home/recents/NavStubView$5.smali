.class Lcom/miui/home/recents/NavStubView$5;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3599
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 3602
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "onGlobalLayout mTaskStackViewLayoutListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3605
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 3610
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)V

    .line 3611
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean v2, v0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 3612
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3500(Lcom/miui/home/recents/NavStubView;)V

    .line 3613
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3614
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SoscUtils;->isSoscTouchSingleApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3615
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->actionMoveHalfAppTaskHold()V

    goto :goto_0

    .line 3617
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag(Z)V

    .line 3621
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3600(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3622
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$3700(Lcom/miui/home/recents/NavStubView;)V

    :cond_3
    return-void
.end method
