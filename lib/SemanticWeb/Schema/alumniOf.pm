use utf8;

package SemanticWeb::Schema::alumniOf;

# ABSTRACT: An organization that the person is an alumni of.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'alumniOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organization that the person is an alumni of.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
