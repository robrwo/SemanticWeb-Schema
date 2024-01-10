use utf8;

package SemanticWeb::Schema::translationOfWork;

# ABSTRACT: The work that this work has been translated from

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'translationOfWork';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The work that this work has been translated from. E.g. 物种起源 is a
translationOf “On the Origin of Species”.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
