.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;->startLoading([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

.field final synthetic val$item3AnimOut:Landroid/animation/ObjectAnimator;

.field final synthetic val$item4AnimIn:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->val$item3AnimOut:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->val$item4AnimIn:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$100(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->val$item3AnimOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$3;->val$item4AnimIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
