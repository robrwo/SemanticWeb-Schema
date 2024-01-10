use utf8;

package SemanticWeb::Schema::usedToDiagnose;

# ABSTRACT: A condition the test is used to diagnose.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'usedToDiagnose';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A condition the test is used to diagnose.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
