.class public Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;
.super Ljava/lang/Object;
.source "AppWidgetProviderMeta.java"


# instance fields
.field public isMIUIWidget:Z

.field public minRefreshInterval:I

.field public miuiAutoScale:Z

.field public refreshMode:Ljava/lang/String;

.field public supportBackgroundBlur:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;IZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->isMIUIWidget:Z

    .line 21
    iput-object p2, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->refreshMode:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->minRefreshInterval:I

    .line 23
    iput-boolean p4, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->miuiAutoScale:Z

    .line 24
    iput-boolean p5, p0, Lcom/miui/home/launcher/widget/AppWidgetProviderMeta;->supportBackgroundBlur:Z

    return-void
.end method
