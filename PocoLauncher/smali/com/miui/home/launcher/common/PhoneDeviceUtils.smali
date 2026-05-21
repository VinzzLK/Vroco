.class public Lcom/miui/home/launcher/common/PhoneDeviceUtils;
.super Ljava/lang/Object;
.source "PhoneDeviceUtils.java"


# static fields
.field public static final DANDELION_SERIES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOG_SERIES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    .line 10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    const-string v2, "dandelion"

    .line 13
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "angelica"

    .line 14
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "angelican"

    .line 15
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "cattail"

    .line 16
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "angelicain"

    .line 17
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "3811727de5b0ddf6ae30defe2ca4d2c2"

    .line 18
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "7e25b972e192b01004b62346ee9975a5"

    .line 19
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "23678db5efde9ab46bce8c23a6d91b50"

    .line 20
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "2b82477bcccc369d9d8ed30bb1200803"

    .line 21
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
