.class Lcom/miui/home/recents/views/RecentMenuView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentMenuView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentMenuView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 185
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentMenuView;->access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 174
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {v1}, Lcom/miui/home/recents/views/RecentMenuView;->access$200(Lcom/miui/home/recents/views/RecentMenuView;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView$1;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentMenuView;->access$300(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->scrollToNearestMotionlessPosition()V

    :goto_0
    return-void
.end method
