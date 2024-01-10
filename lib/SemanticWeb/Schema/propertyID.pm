use utf8;

package SemanticWeb::Schema::propertyID;

# ABSTRACT: A commonly used identifier for the characteristic represented by the property

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'propertyID';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A commonly used identifier for the characteristic represented by the
property, e.g. a manufacturer or a standard code for a property. propertyID
can be (1) a prefixed string, mainly meant to be used with standards for
product properties; (2) a site-specific, non-prefixed string (e.g. the
primary key of the property or the vendor-specific ID of the property), or
(3) a URL indicating the type of the property, either pointing to an
external vocabulary, or a Web resource that describes the property (e.g. a
glossary entry). Standards bodies should promote a standard prefix for the
identifiers of properties from their standards.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
