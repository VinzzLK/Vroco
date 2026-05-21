.class Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;
.super Lmiuix/animation/property/FloatProperty;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lcom/android/systemui/navigationbar/gestural/NavigationHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)F
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->access$100(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 62
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;->getValue(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;F)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->access$000(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;->setValue(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;F)V

    return-void
.end method
