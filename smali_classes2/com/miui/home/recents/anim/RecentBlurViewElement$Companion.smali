.class public final Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;
.super Ljava/lang/Object;
.source "RecentBlurViewElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/RecentBlurViewElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurViewElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/recents/anim/RecentBlurViewElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/RecentBlurViewElement<",
            "Lcom/miui/home/recents/anim/RecentBlurParams;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/RecentBlurViewElement;

    return-object p0
.end method
