.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;->initShowOrHideCheckBoxAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$200(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$302(Lcom/miui/home/launcher/BaseProgressShortcutIcon;I)I

    .line 367
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$6;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$400(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V

    :cond_0
    return-void
.end method
