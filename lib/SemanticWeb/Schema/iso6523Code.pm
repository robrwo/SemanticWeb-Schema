use utf8;

package SemanticWeb::Schema::iso6523Code;

# ABSTRACT: An organization identifier as defined in ISO 6523(-1)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'iso6523Code';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organization identifier as defined in ISO 6523(-1). Note that many
existing organization identifiers such as
[leiCode](http://schema.org/leiCode), [duns](http://schema.org/duns) and
[vatID](http://schema.org/vatID) can be expressed as an ISO 6523 identifier
by setting the ICD part of the ISO 6523 identifier accordingly. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
