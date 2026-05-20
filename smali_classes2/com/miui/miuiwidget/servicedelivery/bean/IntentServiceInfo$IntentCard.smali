.class public Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;
.super Ljava/lang/Object;
.source "IntentServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentCard"
.end annotation


# instance fields
.field public appInfo:Lcom/miui/miuiwidget/servicedelivery/bean/AppInfo;

.field public darkPicture:Ljava/lang/String;

.field public implType:I

.field public implUniqueCode:Ljava/lang/String;

.field public lightPicture:Ljava/lang/String;

.field public localDarkPicture:Ljava/lang/String;

.field public localLightPicture:Ljava/lang/String;

.field public mamlImplInfo:Lcom/miui/miuiwidget/servicedelivery/bean/MamlImplInfo;

.field public packageName:Ljava/lang/String;

.field public targetExposeType:I

.field public widgetImplInfo:Lcom/miui/miuiwidget/servicedelivery/bean/WidgetImplInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/bean/IntentServiceInfo$IntentCard;->targetExposeType:I

    return-void
.end method
