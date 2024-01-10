use utf8;

package SemanticWeb::Schema::typicalTest;

# ABSTRACT: A medical test typically performed given this condition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'typicalTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A medical test typically performed given this condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
