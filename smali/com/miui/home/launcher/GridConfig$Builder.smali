.class final Lcom/miui/home/launcher/GridConfig$Builder;
.super Ljava/lang/Object;
.source "GridConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/GridConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private deviceHeight:I

.field private deviceWidth:I

.field private portrait:Z

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 654
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenWidth:I

    .line 655
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenHeight:I

    .line 656
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceWidth:I

    .line 657
    iput v0, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceHeight:I

    .line 662
    iput-object p1, p0, Lcom/miui/home/launcher/GridConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/home/launcher/GridConfig;
    .locals 8

    .line 666
    new-instance v7, Lcom/miui/home/launcher/GridConfig;

    iget-object v1, p0, Lcom/miui/home/launcher/GridConfig$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenWidth:I

    iget v3, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenHeight:I

    iget v4, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceWidth:I

    iget v5, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceHeight:I

    iget-boolean v6, p0, Lcom/miui/home/launcher/GridConfig$Builder;->portrait:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/GridConfig;-><init>(Landroid/content/Context;IIIIZ)V

    return-object v7
.end method

.method public setDeviceSize(II)Lcom/miui/home/launcher/GridConfig$Builder;
    .locals 0

    .line 676
    iput p1, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceWidth:I

    .line 677
    iput p2, p0, Lcom/miui/home/launcher/GridConfig$Builder;->deviceHeight:I

    return-object p0
.end method

.method public setPortrait(Z)Lcom/miui/home/launcher/GridConfig$Builder;
    .locals 0

    .line 682
    iput-boolean p1, p0, Lcom/miui/home/launcher/GridConfig$Builder;->portrait:Z

    return-object p0
.end method

.method public setScreenSize(II)Lcom/miui/home/launcher/GridConfig$Builder;
    .locals 0

    .line 670
    iput p1, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenWidth:I

    .line 671
    iput p2, p0, Lcom/miui/home/launcher/GridConfig$Builder;->screenHeight:I

    return-object p0
.end method
