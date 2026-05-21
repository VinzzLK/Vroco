.class abstract Lcom/miui/home/launcher/DragController$OutlineTask;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OutlineTask"
.end annotation


# static fields
.field static final sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;


# instance fields
.field protected final executor:Ljava/util/concurrent/Executor;

.field protected final scale:F

.field protected final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 812
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DragController$OutlineTask;->sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V
    .locals 0

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->executor:Ljava/util/concurrent/Executor;

    .line 827
    iput-object p2, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->view:Landroid/view/View;

    .line 828
    iput p3, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->scale:F

    return-void
.end method

.method public static create(Landroid/view/View;F)Lcom/miui/home/launcher/DragController$OutlineTask;
    .locals 1

    .line 814
    instance-of v0, p0, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Lcom/miui/home/launcher/DragController$DesktopIconOutlineTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/DragController$DesktopIconOutlineTask;-><init>(Landroid/view/View;F)V

    return-object v0

    .line 817
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;-><init>(Landroid/view/View;F)V

    return-object v0
.end method


# virtual methods
.method abstract getOutline()Landroid/graphics/Bitmap;
.end method

.method abstract getOutlineBg()Landroid/graphics/Bitmap;
.end method
