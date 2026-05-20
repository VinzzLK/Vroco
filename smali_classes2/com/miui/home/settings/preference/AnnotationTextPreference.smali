.class public Lcom/miui/home/settings/preference/AnnotationTextPreference;
.super Landroidx/preference/Preference;
.source "AnnotationTextPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d002c

    .line 15
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
