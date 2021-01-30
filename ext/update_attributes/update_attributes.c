#include "UpdateAttributes.h"

VALUE rb_mUpdateAttributes;

void
Init_UpdateAttributes(void)
{
  rb_mUpdateAttributes = rb_define_module("UpdateAttributes");
}
