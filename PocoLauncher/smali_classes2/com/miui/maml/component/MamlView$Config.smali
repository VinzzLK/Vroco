.class public Lcom/miui/maml/component/MamlView$Config;
.super Ljava/lang/Object;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final FLAG_WIDE_DEVICE:I = 0x1


# instance fields
.field public autoRemoveCache:Z

.field public flags:I

.field public innerPath:Ljava/lang/String;

.field public mode:I

.field public path:Ljava/lang/String;

.field public resizeScale:F

.field public touchable:Z

.field public viewHeight:I

.field public viewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/miui/maml/component/MamlView$Config;->viewWidth:I

    .line 166
    iput v0, p0, Lcom/miui/maml/component/MamlView$Config;->viewHeight:I

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/miui/maml/component/MamlView$Config;->touchable:Z

    .line 168
    iput v0, p0, Lcom/miui/maml/component/MamlView$Config;->flags:I

    return-void
.end method
