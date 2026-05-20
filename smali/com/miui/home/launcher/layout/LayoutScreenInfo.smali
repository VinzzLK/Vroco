.class public Lcom/miui/home/launcher/layout/LayoutScreenInfo;
.super Ljava/lang/Object;
.source "LayoutScreenInfo.java"


# instance fields
.field public index:I

.field public isNewScreen:Z

.field public screenId:J

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JILjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    .line 11
    iput p3, p0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    .line 12
    iput-object p4, p0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->tag:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->isNewScreen:Z

    return-void
.end method
