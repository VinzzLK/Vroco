.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;
.super Ljava/lang/Object;
.source "ShortcutMenuLayerElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerElement<",
            "Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    return-object p0
.end method
