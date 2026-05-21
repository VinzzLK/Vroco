.class public Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;
.super Ljava/lang/Object;
.source "MamlImplInfo.java"


# static fields
.field public static DEFAULT_VERSION:I = -0x1


# instance fields
.field public canEdit:I

.field public configPath:Ljava/lang/String;

.field public cornerCutType:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public mamlDownloadUrl:Ljava/lang/String;

.field public mamlHeight:I

.field public mamlSize:Ljava/lang/String;

.field public mamlTitle:Ljava/lang/String;

.field public mamlVersion:I

.field public mamlWidth:I

.field public mtzSizeInKb:I

.field public productId:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->DEFAULT_VERSION:I

    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;->mamlVersion:I

    return-void
.end method
