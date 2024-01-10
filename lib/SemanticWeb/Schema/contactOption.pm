use utf8;

package SemanticWeb::Schema::contactOption;

# ABSTRACT: An option available on this contact point (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contactOption';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An option available on this contact point (e.g. a toll-free number or
support for hearing-impaired callers).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
