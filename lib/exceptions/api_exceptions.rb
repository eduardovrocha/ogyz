module APIExceptions
  class NotAuthenticatedError < StandardError
  end

  class NotAuthorizedError < StandardError
  end

  class AuthenticationTimeoutError < StandardError
  end

  class ResourceOutOfContextError < StandardError
  end

  class ResourceAlreadyExistsError < StandardError
  end

  class ResourceNotFoundError < StandardError
  end

  class ResourceArchivedError < StandardError
  end

  class ResourceConflictError < StandardError
  end

  class DomainConstraintError < StandardError
  end

  class MalformedRequestError < StandardError
  end

  class UpdateResourceError < StandardError
  end
end
