.class Lcom/miui/home/launcher/TextSizeScale$Holder;
.super Ljava/lang/Object;
.source "TextSizeScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/TextSizeScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/TextSizeScale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/miui/home/launcher/TextSizeScale;

    invoke-direct {v0}, Lcom/miui/home/launcher/TextSizeScale;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/TextSizeScale$Holder;->sInstance:Lcom/miui/home/launcher/TextSizeScale;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/TextSizeScale;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/TextSizeScale$Holder;->sInstance:Lcom/miui/home/launcher/TextSizeScale;

    return-object v0
.end method
