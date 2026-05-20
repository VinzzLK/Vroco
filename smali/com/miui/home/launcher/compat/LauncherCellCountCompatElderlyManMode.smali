.class public Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
.super Lcom/miui/home/launcher/compat/LauncherCellCount;
.source "LauncherCellCountCompatElderlyManMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
    .locals 1

    .line 11
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;->access$000()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCellCountXDef()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountXMax()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountXMin()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountYDef()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
