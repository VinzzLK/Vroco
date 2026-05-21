.class Lcom/miui/home/launcher/ShortcutIcon$6;
.super Lcom/miui/home/library/mirror/MirrorDragListener;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
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

    .line 1984
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 2008
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    .line 1993
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 2003
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 1988
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    .line 2013
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
