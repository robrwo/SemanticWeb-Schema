use utf8;

package SemanticWeb::Schema::FDAnotEvaluated;

# ABSTRACT: A designation that the drug in question has not been assigned a pregnancy category designation by the US FDA.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FDAnotEvaluated';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A designation that the drug in question has not been assigned a pregnancy
category designation by the US FDA.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
