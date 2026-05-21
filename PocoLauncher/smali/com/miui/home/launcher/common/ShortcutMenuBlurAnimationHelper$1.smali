.class Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutMenuBlurAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->startBlurAnim(Landroid/view/View;ZLcom/miui/home/launcher/widget/DragContainerLayout;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

.field final synthetic val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

.field final synthetic val$isDrawingBlur:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$URervgDyv4yWldDO40g42A1fpGw(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->lambda$onAnimationEnd$1(Lcom/miui/home/launcher/DragView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i4QTIfnb9_ikWsa78bcPMPQfNFU(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->lambda$onAnimationStart$0(Lcom/miui/home/launcher/DragView;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;ZLcom/miui/home/launcher/widget/DragContainerLayout;Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iput-boolean p2, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$isDrawingBlur:Z

    iput-object p3, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    iput-object p4, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/launcher/DragView;)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->enableItemTitleShadow(Z)V

    return-void
.end method

.method private static synthetic lambda$onAnimationStart$0(Lcom/miui/home/launcher/DragView;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->enableItemTitleShadow(Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$000(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    sget-object v1, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1$$ExternalSyntheticLambda0;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$100(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    sget-object v1, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda1;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$100(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    .line 69
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 53
    iget-boolean p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$isDrawingBlur:Z

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$000(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->this$0:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;->val$dragContainerLayout:Lcom/miui/home/launcher/widget/DragContainerLayout;

    sget-object v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1$$ExternalSyntheticLambda1;

    invoke-static {p1, p0, v0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->access$100(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
