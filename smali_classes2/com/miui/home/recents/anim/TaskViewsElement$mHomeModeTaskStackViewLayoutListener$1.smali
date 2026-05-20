.class public final Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;
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

    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const-string v0, "TaskViewsElement"

    const-string v1, "onGlobalLayout mHomeModeTaskStackViewLayoutListener"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$setMReLoadTaskFinished$p(Lcom/miui/home/recents/anim/TaskViewsElement;Z)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

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

    .line 164
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$updateTaskViewToInitPosition(Lcom/miui/home/recents/anim/TaskViewsElement;Landroid/graphics/RectF;IZ)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$getMPendingResetTaskView$p(Lcom/miui/home/recents/anim/TaskViewsElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$mHomeModeTaskStackViewLayoutListener$1;->this$0:Lcom/miui/home/recents/anim/TaskViewsElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/TaskViewsElement;->access$resetTaskView(Lcom/miui/home/recents/anim/TaskViewsElement;)V

    :cond_1
    return-void
.end method
