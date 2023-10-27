use utf8;

package SemanticWeb::Schema::CorrectionComment;

# ABSTRACT: A [[comment]] that corrects [[CreativeWork]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'CorrectionComment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A [[comment]] that corrects L<SemanticWeb::Schema::CreativeWork>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
