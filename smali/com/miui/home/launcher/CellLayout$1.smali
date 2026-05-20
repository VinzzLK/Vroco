.class Lcom/miui/home/launcher/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;

.field final synthetic val$cellXY:[I

.field final synthetic val$childLeft:I

.field final synthetic val$childTop:I

.field final synthetic val$lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;[IILcom/miui/home/launcher/CellLayout$LayoutParams;I)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout$1;->val$cellXY:[I

    iput p3, p0, Lcom/miui/home/launcher/CellLayout$1;->val$childLeft:I

    iput-object p4, p0, Lcom/miui/home/launcher/CellLayout$1;->val$lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    iput p5, p0, Lcom/miui/home/launcher/CellLayout$1;->val$childTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 790
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$1;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$1;->val$cellXY:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    iget v4, p0, Lcom/miui/home/launcher/CellLayout$1;->val$childLeft:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$1;->val$lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$1;->val$childTop:I

    add-int/2addr v0, p0

    iget p0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    const-string v3, "android.home.drop"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v5

    move v5, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method
