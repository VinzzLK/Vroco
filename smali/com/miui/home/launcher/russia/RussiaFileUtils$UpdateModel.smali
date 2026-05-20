.class Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;
.super Ljava/lang/Object;
.source "RussiaFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/russia/RussiaFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateModel"
.end annotation


# instance fields
.field needAddRussiaApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field needRemoveRussiaApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/russia/RussiaFileUtils$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils$UpdateModel;-><init>()V

    return-void
.end method
