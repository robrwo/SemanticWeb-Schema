use utf8;

package SemanticWeb::Schema::expectedPrognosis;

# ABSTRACT: The likely outcome in either the short term or long term of the medical condition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'expectedPrognosis';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The likely outcome in either the short term or long term of the medical
condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
