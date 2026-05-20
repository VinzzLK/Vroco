.class final Lcom/miui/home/launcher/GridConfig$FolderConfig;
.super Ljava/lang/Object;
.source "GridConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/GridConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FolderConfig"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFolderCellHeight:I

.field private mFolderCellWidth:I

.field private mFolderPreviewHeight:I

.field private mFolderPreviewItemPadding:I

.field private mFolderPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 782
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellHeight:I

    .line 783
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellWidth:I

    .line 791
    iput-object p1, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/GridConfig$FolderConfig;)V
    .locals 0

    .line 781
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->calcFolderPreviewSize()V

    return-void
.end method

.method private calcFolderClingSize(III)V
    .locals 0

    .line 827
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellHeight:I

    .line 828
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellWidth:I

    return-void
.end method

.method private calcFolderPreviewSize()V
    .locals 3

    .line 820
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f3dc5d6    # 0.7413f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewWidth:I

    .line 821
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewHeight:I

    .line 822
    iget-object v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070213

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewItemPadding:I

    return-void
.end method


# virtual methods
.method public getFolderCellHeight()I
    .locals 0

    .line 807
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellHeight:I

    return p0
.end method

.method public getFolderCellWidth()I
    .locals 0

    .line 811
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderCellWidth:I

    return p0
.end method

.method public getFolderPreviewHeight()I
    .locals 0

    .line 799
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewHeight:I

    return p0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 0

    .line 803
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewItemPadding:I

    return p0
.end method

.method public getFolderPreviewWidth()I
    .locals 0

    .line 795
    iget p0, p0, Lcom/miui/home/launcher/GridConfig$FolderConfig;->mFolderPreviewWidth:I

    return p0
.end method

.method public updateFolderConfig(III)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->calcFolderPreviewSize()V

    .line 816
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/GridConfig$FolderConfig;->calcFolderClingSize(III)V

    return-void
.end method
