.class Lcom/miui/home/launcher/ShortcutIcon$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->initShowOrHideCheckBoxAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$000(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 p1, 0x4

    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    .line 237
    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$100(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_0
    return-void
.end method
