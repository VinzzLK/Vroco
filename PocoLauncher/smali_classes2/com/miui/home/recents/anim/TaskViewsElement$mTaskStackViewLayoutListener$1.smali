.class public final Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;
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

    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const-string v0, "TaskViewsElement"

    const-string v1, "onGlobalLayout mTaskStackViewLayoutListener"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getRecentView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getRecentView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getMRunningTaskId$p(Lcom/miui/home/recents/anim/TaskViewsElement;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getRecentView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getMRunningTaskId$p(Lcom/miui/home/recents/anim/TaskViewsElement;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$setMRunningTaskIndex$p(Lcom/miui/home/recents/anim/TaskViewsElement;I)V

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getMPendingResetTaskView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$updateTaskTransY(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    .line 152
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$resetTaskView(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    :cond_5
    return-void
.end method
