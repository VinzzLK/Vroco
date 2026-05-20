.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;
.super Lcom/miui/home/library/mirror/MirrorDragListener;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
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

    .line 954
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    .line 963
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 958
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$10;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$600(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
