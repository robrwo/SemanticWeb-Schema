use utf8;

package SemanticWeb::Schema::requiredMaxAge;

# ABSTRACT: Audiences defined by a person's maximum age.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'requiredMaxAge';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Audiences defined by a person's maximum age.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
