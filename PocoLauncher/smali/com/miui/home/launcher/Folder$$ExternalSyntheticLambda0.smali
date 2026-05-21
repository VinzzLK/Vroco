.class public final synthetic Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Folder;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Folder;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Folder;

    iput-object p2, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/Folder;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/Folder;->$r8$lambda$dA5nSlSCkHXzjP48PXfV4Z27oMc(Lcom/miui/home/launcher/Folder;Landroid/graphics/Rect;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
