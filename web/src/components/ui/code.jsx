import React from "react"
import { cn } from "@/lib/utils"

const Code = React.forwardRef(
  ({ className, children, ...props }, ref) => {
    return (
      <pre
        ref={ref}
        className={cn(
          "rounded-md font-mono text-sm bg-black/5 p-2 overflow-auto",
          className
        )}
        {...props}
      >
        <code>{children}</code>
      </pre>
    )
  }
)

Code.displayName = "Code"

export { Code }
