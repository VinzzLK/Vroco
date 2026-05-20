.class public Lcom/miui/miuiwidget/track/AdvertParams;
.super Ljava/lang/Object;
.source "AdvertParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miuiwidget/track/AdvertParams$Strategy;
    }
.end annotation


# instance fields
.field public analyticsEvent:Ljava/lang/String;

.field public ex:Ljava/lang/String;

.field public monitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oneTrackEvent:Ljava/lang/String;

.field public trackingStrategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/miui/miuiwidget/track/AdvertParams;->trackingStrategy:Ljava/lang/String;

    return-void
.end method
